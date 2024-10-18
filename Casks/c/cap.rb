cask "cap" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.3.0-beta.5.7.1,01JAE63GWSCSCJHD49AGZ029WT"
    sha256 "e9fb8aa280be6f7a0d777b4415c672324d2c3796566f3dd234b62ca7ecbad179"
  end
  on_intel do
    version "0.3.0-beta.5.7.1,01JAE61HGMNT2XR15GYDTG59D6"
    sha256 "0519890531077d399587fc696172279e6642b2ccb8891b8593fc77fccf39d6c7"
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}",
      verified: "crabnebula.app/asset/"
  name "Cap"
  desc "Screen recording software"
  homepage "https://cap.so/"

  livecheck do
    url "https://cdn.crabnebula.app/update/cap/cap/darwin-#{arch}/0.0.0"
    regex(%r{cdn.crabnebula.app/asset/(.+)}i)
    strategy :json do |json|
      asset_id = json["url"][regex, 1]
      version = json["version"]
      next if asset_id.blank? || version.blank?

      "#{version},#{asset_id}"
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Cap.app"

  zap trash: [
    "~/Library/Application Support/cap",
    "~/Library/Caches/com.cap.desktop",
    "~/Library/Preferences/com.cap.desktop.plist",
    "~/Library/Saved Application State/com.cap.desktop.savedState",
    "~/Library/WebKit/com.cap.desktop",
  ]
end
