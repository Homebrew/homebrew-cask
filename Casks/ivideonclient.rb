cask "ivideonclient" do
  version "6.9.1"
  sha256 "c7fc9b6794c10c9daf7696578fd51cb15341754541e84a3c2adcf5bdf578d09c"

  # updates.iv-cdn.com/ was verified as official when first introduced to the cask
  url "https://updates.iv-cdn.com/bundles/ivideon_client/#{version}/IvideonClient_#{version}_macosx-x86-64.dmg"
  appcast "https://www.ivideon.com/downloads/"
  name "Ivideon Client"
  desc "App to watch Ivideon’s cloud-based surveillance videos"
  homepage "https://www.ivideon.com/"

  app "IvideonClient.app"
end
