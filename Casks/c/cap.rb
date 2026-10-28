cask "cap" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.6.2,01M625F2C69VMCTS7HHCSJBNSM"
    sha256 "27cd666957f31c588f82b898076c0dcc51277143c2df26dd366c14506164b2d1"
  end
  on_intel do
    version "0.6.2,01M6261PJQT6B2K6QBVTZXVNTQ"
    sha256 "86808705aff14634f5f2aba61b5ed8c70d71bc77991601f6abeb3b0c63e00f0d"
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}"
  name "Cap"
  desc "Screen recording software"
  homepage "https://cap.so/"

  livecheck do
    url "https://cdn.crabnebula.app/update/cap/cap/darwin-#{arch}/0.0.0"
    regex(%r{/asset/([^?/]+)}i)
    strategy :json do |json, regex|
      asset_id = json["url"]&.[](regex, 1)
      version = json["version"]
      next if asset_id.blank? || version.blank?

      "#{version},#{asset_id}"
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Cap.app"

  zap trash: [
    "~/Library/Application Support/cap",
    "~/Library/Application Support/so.cap.desktop",
    "~/Library/Caches/com.cap.desktop",
    "~/Library/Logs/so.cap.desktop",
    "~/Library/Preferences/com.cap.desktop.plist",
    "~/Library/Preferences/so.cap.desktop.plist",
    "~/Library/Saved Application State/com.cap.desktop.savedState",
    "~/Library/WebKit/com.cap.desktop",
  ]
end
