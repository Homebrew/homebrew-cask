cask 'adobe-creative-cloud' do
  version '4.7.0.400'
  sha256 'bf91a3078a50200b69ff8f88a7c14e9be1ce054eee59f65c9f8e672ec7164116'

  url "http://ccmdl.adobe.com/AdobeProducts/KCCC/1/osx10/ACCCx#{version.dots_to_underscores}.dmg"
  name 'Adobe Creative Cloud'
  homepage 'https://creative.adobe.com/products/creative-cloud'

  depends_on macos: '>= :mavericks'

  installer script: {
                      executable: "#{staged_path}/Install.app/Contents/MacOS/Install",
                      args:       ['--mode=silent'],
                      sudo:       true,
                    }
end
