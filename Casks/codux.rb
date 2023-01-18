cask "codux" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "14.2.2,e855c7_0f725c10eb7d4b50848510cbd2c31a5d"
    sha256 "91412362931ef5cc52241918cab60543226d7da68cf8045fce06cc3a48ede67f"
  end
  on_intel do
    version "14.2.2,e855c7_7a9afde8182f43f9a3cc7c7263434849"
    sha256 "488f5f4b5ed403e5e210308b7db4e4c35f3f68c40467c31f1c79c22bc8413371"
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
