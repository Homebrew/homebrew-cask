cask "codux" do
  arch arm: "arm64-arm", intel: "x64-dmg"

  on_arm do
    version "14.1.0,b478ab_d61c0ea5192e4c558ebcc75d5403dbec"
    sha256 "1113d39324d6e921c64455c5d4060da455f78f3dff5553a7eb97a8f902a7f937"
  end
  on_intel do
    version "14.1.0,b478ab_4886668678ca41e2bcafc6403e4f7f6d"
    sha256 "b76a4e3516bb8af9b4bec20056be74b98780786071a5ef1a835c88753a6b57f5"
  end

  url "https://95610582-f2db-4cc9-be23-c529650d1ad9.filesusr.com/archives/#{version.csv.second}.zip?dn=Codux-#{version.csv.first}.#{arch}.zip",
      verified: "95610582-f2db-4cc9-be23-c529650d1ad9.filesusr.com/archives/"
  name "Codux"
  desc "React IDE built to visually edit component styling and layouts"
  homepage "https://www.codux.com/"

  livecheck do
    url "https://www.codux.com/download/"
    regex(%r{archives/(.+)\.zip\?dn=Codux[._-]v?(\d+(?:\.\d+)+).#{arch}\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on macos: ">= :catalina"

  app "Codux.app"

  zap trash: "~/Library/Application Support/Codux"
end
