cask 'dwarf-fortress' do
  version '0.43.01'
  sha256 '7fe378b7aeee67f10a1f88a2341b8724edbf91795fd928506f01dfb403304d43'

  url "http://www.bay12games.com/dwarves/df_#{version.minor}_#{version.patch}_osx.tar.bz2"
  name 'Dwarf Fortress'
  homepage 'http://www.bay12games.com/dwarves/'
  license :gratis

  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/df_wrapper"
  depends_on cask: 'sdl-framework'
  depends_on cask: 'sdl-ttf-framework'

  binary shimscript, target: 'dwarf-fortress'

  preflight do
    File.open(shimscript, 'w') do |f|
      f.puts '#!/bin/sh'
      f.puts "cd '#{staged_path}/df_osx' && ./df \"$@\""
      FileUtils.chmod '+x', f
    end
  end

  postflight do
    Dir.chdir("#{staged_path}/df_osx/libs") do
      {
        'SDL'     => 'sdl-framework',
        'SDL_ttf' => 'sdl-ttf-framework',
      }.each do |key, value|
        name = "#{key}.framework"
        File.rename(name, "#{name}.orig")
        File.symlink(Hbc.load(value).staged_path.join(name), name)
      end
    end
  end

  uninstall_preflight do
    system 'cp', '-r', "#{staged_path}/df_osx/data/save", '/tmp/dwarf-fortress-save/'
  end

  caveats 'During uninstall, your save data will be copied to /tmp/dwarf-fortress-save'
end
