cask "cap" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.4.4,01KEZQT2Q2FRT9X2WY6FHR6TD9"
    sha256 "f41f8bc556f4b0974449f28bbe6103084fd633364dbe9fbe3baa84f83b03eb8b"
  end
  on_intel do
    version "0.4.4,01KEZQXDK7G0VBB5VT8W2H1VAX"
    sha256 "618c9c72ad0a37724ecebec0fbe7e3b54c360f4e78e66050877623d0b9c38f3d"
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
      asset_id = json["url"]&.[](regex, 1)
      version = json["version"]
      next if asset_id.blank? || version.blank?

      "#{version},#{asset_id}"
    end
  end

  auto_updates true

  app "Cap.app"

  zap trash: [
    "~/Library/Application Support/cap",
    "~/Library/Caches/com.cap.desktop",
    "~/Library/Preferences/com.cap.desktop.plist",
    "~/Library/Saved Application State/com.cap.desktop.savedState",
    "~/Library/WebKit/com.cap.desktop",
  ]
end
