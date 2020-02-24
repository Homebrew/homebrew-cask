cask 'dwarf-fortress' do
  version '0.47.02'
  sha256 '60a8231b42ca18d100c78f8047099bd96dcacf5bdadd3e83f63cdcd83d429ed7'

  url "https://www.bay12games.com/dwarves/df_#{version.minor}_#{version.patch}_osx.tar.bz2"
  name 'Dwarf Fortress'
  homepage 'https://www.bay12games.com/dwarves/'

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
