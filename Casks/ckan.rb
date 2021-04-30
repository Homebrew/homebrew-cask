cask "ckan" do
  version "1.30.0"
  sha256 "3244d377aca5635490b550ba2f5703ff19d609422802ec1be355ad630c944eb3"

  url "https://github.com/KSP-CKAN/CKAN/releases/download/v#{version}/CKAN.dmg"
  name "Comprehensive Kerbal Archive Network client"
  homepage "https://github.com/KSP-CKAN/CKAN"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on cask: "mono-mdk"

  app "CKAN.app"
end
