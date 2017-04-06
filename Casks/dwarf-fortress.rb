cask 'dwarf-fortress' do
  version '0.43.05'
  sha256 'c9614c012c23dcef6197f83d02510d577e1257c5a0de948af5c8f76ae56c5fc8'

  url "http://www.bay12games.com/dwarves/df_#{version.minor}_#{version.patch}_osx.tar.bz2"
  name 'Dwarf Fortress'
  homepage 'http://www.bay12games.com/dwarves/'

  depends_on cask: 'sdl-framework'
  depends_on cask: 'sdl-ttf-framework'

  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/df_osx/df.wrapper.sh"
  binary shimscript, target: 'dwarf-fortress'

  preflight do
    IO.write shimscript, <<-EOS.undent
      #!/bin/sh
      exec '#{staged_path}/df_osx/df' "$@"
    EOS
  end

  postflight do
    Dir.chdir("#{staged_path}/df_osx/libs") do
      {
        'SDL'     => 'sdl-framework',
        'SDL_ttf' => 'sdl-ttf-framework',
      }.each do |key, value|
        name = "#{key}.framework"
        File.rename(name, "#{name}.orig")
        File.symlink(Hbc::CaskLoader.load(value).staged_path.join(name), name)
      end
    end
  end

  uninstall_preflight do
    FileUtils.cp_r("#{staged_path}/df_osx/data/save", '/tmp/dwarf-fortress-save/') if Dir.exist?("#{staged_path}/df_osx/data/save")
  end

  caveats 'During uninstall, your save data will be copied to /tmp/dwarf-fortress-save'
end
