cask 'dwarf-fortress' do
  version '0.44.12'
  sha256 '218d53199f7eb9f58c035e3a5d44d882f1b69e07ef63f98a6590d61a6fc8a6d5'

  url "http://www.bay12games.com/dwarves/df_#{version.minor}_#{version.patch}_osx.tar.bz2"
  name 'Dwarf Fortress'
  homepage 'http://www.bay12games.com/dwarves/'

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/df_osx/df.wrapper.sh"
  binary shimscript, target: 'dwarf-fortress'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{staged_path}/df_osx/df' "$@"
    EOS
  end

  uninstall_preflight do
    FileUtils.cp_r("#{staged_path}/df_osx/data/save", '/tmp/dwarf-fortress-save/') if Dir.exist?("#{staged_path}/df_osx/data/save")
  end

  caveats <<~EOS
    During uninstall, your save data will be copied to /tmp/dwarf-fortress-save
  EOS
end
