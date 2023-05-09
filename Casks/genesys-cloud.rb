cask "genesys-cloud" do
  version "2.22.557-56"
  sha256 "a743ef082b2dca01056b73f55e3e91c4d4093d994560a02df99f5ec71c7a5b4f"

  url "https://app.mypurecloud.com/directory-mac/build-assets/#{version}/genesys-cloud-mac-#{version[0...-3]}.dmg"
  name "Genesys Cloud for macOS"
  desc "Run Genesys Cloud as a stand-alone program, keeping it separate from web browser"
  homepage "https://apps.mypurecloud.com/directory-mac/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/build-assets/(\d+(?:\.\d+)+-\d+).*\.dmg}i)
  end

  auto_updates true

  app "Genesys Cloud.app"
end
