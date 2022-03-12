cask "panwriter" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.8.3"

  if Hardware::CPU.intel?
    sha256 "2e6cf9e12c5cbd8e378f27aa7453017600dc554e321be5cd786ff79756a99e87"
  else
    sha256 "ceea9777d744f910cc9fdf87555141acf54261c80556cd7045d1342713fe7dcf"
  end

  url "https://github.com/mb21/panwriter/releases/download/v#{version}/PanWriter-#{version}-#{arch}.dmg",
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
