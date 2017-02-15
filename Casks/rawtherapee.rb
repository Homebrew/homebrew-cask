cask 'rawtherapee' do
  if MacOS.version <= :lion
    version '4.2.1'
    sha256 'd553f04cab4e09a1d66d8811be5ec8468171abe584bdb541ff97d9fa0841e32f'

    url "http://rawtherapee.com/releases_head/mac/RawTherapee_OSX_10.7_64_#{version}.zip"
  else
    version '5.0-r1_gtk3'
    sha256 '4a8c7d527d06e674e9a3d61dac3a45760c5ff1314db06b81e63f74bc8a3dff16'
    
    url "http://www.rawtherapee.com/shared/builds/mac/RawTherapee_OSX_10.9_#{version}.app.zip"
  end

  name 'RawTherapee'
  homepage 'http://rawtherapee.com/'

  if MacOS.version <= :lion
    container nested: "RawTherapee_OSX_10.7_64_#{version}/RawTherapee_OSX_10.7_64_#{version}__.dmg"
    app 'RawTherapee.app'
  else
    app 'RawTherapee-gtk3.app'
  end  
end
