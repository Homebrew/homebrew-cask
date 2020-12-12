cask "fritzing" do
  version "0.9.4,a1ffcea08814801903b1a9515b18cf97067968ae:498"

  if MacOS.version <= :high_sierra
    sha256 "16ecb3a370b580d5dee3fcfa15a6490cb62538861cfb6f42d9a82a72a99ca25d"
    # github.com/fritzing/fritzing-app was verified as official when first introduced to the cask
    url "https://github.com/fritzing/fritzing-app/releases/download/CD-#{version.after_colon}/fritzing-#{version.after_comma.before_colon}-master-#{version.after_colon}.high_sierra.10.1.dmg"
  else
    sha256 "51f23f1677a8da07f3ceb4b0405caa30ab8f46269e0336bca56689a98f0c6049"
    # github.com/fritzing/fritzing-app was verified as official when first introduced to the cask
    url "https://github.com/fritzing/fritzing-app/releases/download/CD-#{version.after_colon}/fritzing-#{version.after_comma.before_colon}-master-#{version.after_colon}.mojave.10.2.dmg"
  end

  appcast "https://github.com/fritzing/fritzing-app/releases.atom"
  name "Fritzing"
  homepage "https://fritzing.org/home/"

  app "Fritzing.app"
end
