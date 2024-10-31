cask "cap" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.3.0-beta.5.7.3,01JAQQS3QF7W44CQTVGN7VQ6NB"
    sha256 "d8b32e764025aae99e52fa324127ac69aa7ee004cc5462b28c72ef5d070b9fce"
  end
  on_intel do
    version "0.3.0-beta.5.7.3,01JAQQKK3QBFAC1JWW5X5J4E49"
    sha256 "99f029c37259678b6d0bdde9913207e08e3a7f6c51e7990f5b28d80c95dc3035"
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}",
      verified: "crabnebula.app/asset/"
  name "Cap"
  desc "Screen recording software"
  homepage "https://cap.so/"

  livecheck do
    url "https://cdn.crabnebula.app/update/cap/cap/darwin-#{arch}/0.0.0"
    regex(%r{cdn.crabnebula.app/asset/(.+)}i)
    strategy :json do |json, regex|
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
