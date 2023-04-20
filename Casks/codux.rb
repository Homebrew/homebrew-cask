cask "codux" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "15.1.0,e855c7_dfd619ea74f74cb8ac5450619cb58aa9"
    sha256 "61a2f8e4e50fb7ea974aca0d332911314b47e4a78ed0a722b749f3b00848dedf"
  end
  on_intel do
    version "15.1.0,e855c7_ee2eb78e05b043a8a6fdbeac60a4e1f5"
    sha256 "5773eabf1ae49cd69753bea820c43d0d0e55c04a436b50a1fd009b3d3de9e5a5"
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
