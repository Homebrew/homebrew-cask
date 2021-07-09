cask "duplicati" do
  version "2.0.6.3,beta:2021-06-17"
  sha256 "7a26fd69b7016e88a23ff03474eb78e174da463c4967b90c0b54f07a94027e18"

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
