cask "alfaview" do
  version "9.21.1"
  sha256 "e7b8429b5a23dceee52be9e4bf714e5fb6921e87b5e7d94633550b03a9036667"

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.pkg"
  name "Alfaview"
  desc "Audio video conferencing"
  homepage "https://alfaview.com/"

  livecheck do
    url "https://production-alfaview-assets.alfaview.com/stable/mac/version.info"
    strategy :json do |json|
      json["versions"]&.first&.[]("version")
    end
  end

  depends_on macos: ">= :high_sierra"

  pkg "alfaview-mac-production-#{version}.pkg"

  uninstall quit:    "com.alfaview.desktop",
            pkgutil: "com.alfaview.desktop"

  zap trash: "~/Library/Application Support/alfaview"
end
