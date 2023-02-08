cask "codux" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "14.2.4,e855c7_bd824fbb49d14b57b06330810e9f024d"
    sha256 "bb725f2433c6070f6f38ba3435ec41aa6f6dd147740bda185afa0fae7d735bc4"
  end
  on_intel do
    version "14.2.4,e855c7_c89f5bba780e4d4197eb755459920b86"
    sha256 "67fdb41b3b2a892c33820a6d92bdeb277c9865862719e824ce430dce56450cc4"
  end

  url "https://95610582-f2db-4cc9-be23-c529650d1ad9.filesusr.com/archives/#{version.csv.second}.zip?dn=Codux-#{version.csv.first}.#{arch}-dmg.zip",
      verified: "95610582-f2db-4cc9-be23-c529650d1ad9.filesusr.com/archives/"
  name "Codux"
  desc "React IDE built to visually edit component styling and layouts"
  homepage "https://www.codux.com/"

  livecheck do
    url "https://www.codux.com/download/"
    regex(%r{archives/(.+?)\.zip\?dn=Codux[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}[._-]dmg\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on macos: ">= :catalina"

  app "Codux.app"

  zap trash: "~/Library/Application Support/Codux"
end
