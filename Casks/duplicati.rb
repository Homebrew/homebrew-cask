cask "duplicati" do
  version "2.0.5.114,canary:2021-03-10"
  sha256 "bf32d4805b0e246ede15668d4ff791102e33e07a6e3cc5743e66a0b57a6c3a4c"

  url "https://github.com/duplicati/duplicati/releases/download/v#{version.before_comma}-#{version.before_comma}_#{version.after_comma.before_colon}_#{version.after_colon}/duplicati-#{version.before_comma}_#{version.after_comma.before_colon}_#{version.after_colon}.dmg",
      verified: "github.com/duplicati/duplicati/"
  name "Duplicati"
  desc "Store securely encrypted backups in the cloud!"
  homepage "https://www.duplicati.com/"

  livecheck do
    url "https://github.com/duplicati/duplicati/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/duplicati-(\d+(?:\.\d+)*)_([^/]*?)_(\d+(?:-\d+)*)\.dmg}i)
      "#{match[1]},#{match[2]}:#{match[3]}"
    end
  end

  depends_on formula: "mono"

  app "Duplicati.app"

  zap trash: [
    "~/Library/Application Support/Duplicati",
    "~/.config/Duplicati",
  ]
end
