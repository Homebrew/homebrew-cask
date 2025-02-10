cask "alfaview" do
  version "9.21.0"
  sha256 "9aa62852034f559691b2b47f171d564e1b7b86f68ca52add469f841dfeebd3a1"

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
