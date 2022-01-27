cask "panwriter" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.8.2"

  if Hardware::CPU.intel?
    sha256 "cccad3de00d028a6d3cd179bb5bca49e0cfad693bf0ef78621613685600b3fcf"
  else
    sha256 "982a3fb5ad3aa0673cf8aca7eae06d54ae11c19639e16320f925f82de517b5c5"
  end

  url "https://github.com/mb21/panwriter/releases/download/v#{version}/PanWriter-#{version}#{arch}.dmg",
      verified: "github.com/mb21/panwriter/"
  name "PanWriter"
  desc "Markdown editor with pandoc integration and paginated preview"
  homepage "https://panwriter.com/"

  depends_on formula: "pandoc"

  app "PanWriter.app"

  zap trash: [
    "~/Library/Application Support/PanWriter",
    "~/Library/Preferences/com.panwriter.app.plist",
  ]
end
