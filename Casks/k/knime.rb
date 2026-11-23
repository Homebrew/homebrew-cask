cask "knime" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.12.1"
  sha256 arm:   "5bc4a6a6011a36c85ecdec5bbdcea32ecf7378af8380ff8ca92f0d0f639ccb20",
         intel: "4dab02c9806bd8653e05576c83ca7132f8b57a4bba73155b0e67b1e4bb947bda"

  url "https://download.knime.org/analytics-platform/macosx/knime_#{version}.app.macosx.cocoa.#{arch}.dmg"
  name "KNIME Analytics Platform"
  desc "Software to create and productionise data science"
  homepage "https://www.knime.com/"

  livecheck do
    url "https://download.knime.org/analytics-platform/macosx/knime-latest-app.macosx.cocoa.#{arch}.dmg"
    regex(/knime[._-]v?(\d+(?:\.\d+)+).*?\.dmg/i)
    strategy :header_match
  end

  auto_updates true
  depends_on :macos

  app "KNIME #{version}.app"

  zap trash: [
    "~/Library/Caches/org.knime.product",
    "~/Library/Preferences/org.knime.product.plist",
    "~/Library/Saved Application State/org.knime.product.savedState",
  ]
end
