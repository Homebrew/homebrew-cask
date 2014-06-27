class Macpass < Cask
  version '0.4.1-alpha'
  sha256 '1beaec4f0f8e33e5bf2575a4706befe6ef513f46ddc49f7662b6af3721680039'
  
  url 'https://github.com/mstarke/MacPass/releases/download/0.4.1-alpha/MacPass-0.4.1-alpha.zip'
  appcast 'http://www.nomadsland.de/macpass_appcast.xml'
  homepage 'http://mstarke.github.io/MacPass/'

  link 'MacPass.app'
end
