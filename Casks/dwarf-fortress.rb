cask 'dwarf-fortress' do
  version '0.47.01'
  sha256 '3c229c742cdebff7cfb75ea572006750e6351902ba7189e1d27969d5a2738da3'

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
