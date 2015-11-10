cask :v1 => 'apcupsd' do
  version '3.14.13'
  sha256 '79fe12be05eb4bac41c008d5eedc51712cdf454edc69534f2ac26f379024b353'

  url "https://downloads.sourceforge.net/project/apcupsd/osx-binaries%20-%20Stable/#{version}/Apcupsd-#{version}.dmg"
  name 'Apcupsd'
  homepage 'http://www.apcupsd.org/'
  license :gpl

  if MacOS.release >= :el_capitan
    preflight do
      File.open("#{staged_path}/installer_choices.plist", 'w') do |file|
        file.write <<-EOS.undent
          <?xml version="1.0" encoding="UTF-8"?>
          <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
          <plist version="1.0">
            <array>
              <string>apcupsd</string>
            </array>
          </plist>
        EOS
      end

      system '/usr/bin/sudo', '-E', '--',
             '/usr/sbin/installer', '-target', 'LocalSystem',
                                    '-pkg', "#{staged_path}/Apcupsd-#{version}.pkg",
                                    '-applyChoiceChangesXML', "#{staged_path}/installer_choices.plist"
    end

    caveats <<-EOS.undent
      The #{token} daemon is not yet supported on OS X 10.11 El Capitan and above.
      Only the #{token} agent will be installed.
    EOS
  else
    pkg "Apcupsd-#{version}.pkg"
  end

  uninstall :pkgutil => 'com.apcupsd.*',
            :quit    => 'com.apcupsd.apcagent'

  zap       :delete  => '~/Library/Preferences/com.apcupsd.apcagent.plist'
end
