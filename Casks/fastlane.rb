cask 'fastlane' do
  version :latest
  sha256 :no_check

  url 'https://fastlane.tools/fastlane.zip'
  name 'fastlane'
  homepage 'https://fastlane.tools/'

  installer script: {
                      executable: "#{staged_path}/install",
                      args:       ['-p', '-u', '-b'],
                    }

  uninstall script: {
                      executable: "#{staged_path}/uninstall",
                      args:       ['-y'],
                    }
end
