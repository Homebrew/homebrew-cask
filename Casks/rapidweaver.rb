cask 'rapidweaver' do
  version '6.4,15176,1458573922'
  sha256 '237a3e402194ae1b475a523a431a60cdb2ba8babfa50f22eaccd7ba5c619a89c'

  # devmate.com/com.realmacsoftware.rapidweaver6 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.realmacsoftware.rapidweaver6/#{version.after_comma.before_comma}/#{version.after_comma.after_comma}/RapidWeaver#{version.major}-#{version.after_comma.before_comma}.zip"
  appcast "https://updates.devmate.com/com.realmacsoftware.rapidweaver#{version.major}.xml",
          checkpoint: '42a364ce0f07cb09d7b55024becee4acc42646a530673f5ae1d178fb13b40c1e'
  name 'RapidWeaver'
  homepage 'https://realmacsoftware.com/rapidweaver'

  depends_on macos: '>= :leopard'

  app "RapidWeaver #{version.major}.app"
end
