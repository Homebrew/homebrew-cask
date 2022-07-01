cask "dosbox-x" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    version "0.84.0,20220531205302"
    sha256 "cce8d0147e57f45aa5be433ac1b426f35b7dd8626a4e9e4b945b913e7ba108b3"
  else
    version "0.84.1,20220701062948"
    sha256 "190c35e42f98bda1ea880e2fd9f1d1a04b07ec50b365f220ec22df520f1cce9d"
  end

  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.csv.first}/dosbox-x-macosx-#{arch}-#{version.csv.second}.zip",
      verified: "github.com/joncampbell123/dosbox-x/"
  name "DOSBox-X"
  desc "Fork of the DOSBox project"
  homepage "https://dosbox-x.com/"

  livecheck do
    url "https://github.com/joncampbell123/dosbox-x/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=".*?/dosbox-x-v?(\d+(?:\.\d+)+)/dosbox-x-macosx-#{arch}-([^/]+)\.zip"}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "dosbox-x/dosbox-x.app"

  zap trash: [
    "~/Library/Preferences/com.dosbox-x.plist",
    "~/Library/Preferences/mapper-dosbox-x.map",
  ]
end
