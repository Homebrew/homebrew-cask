cask "codux" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "15.0.1,69fb62_41cf0b5ce8924a39b668e4a8ac5b0d2b"
    sha256 "3eb53782b4927fb3a53ccc0a7060cf6278fd72f53eba981ab1adbd1b8eee584e"
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
