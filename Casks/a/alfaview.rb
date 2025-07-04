cask "alfaview" do
  version "9.22.7"
  sha256 "cf86ee03b23ba717056fd8e392719523aae9577b0217e00604368834c3d6a80e"

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
