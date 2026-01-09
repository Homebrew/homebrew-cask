cask "cap" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.4.1,01KEFV4WFTVCVZFEEVPS7RVHYP"
    sha256 "f40e121a86015f15e61b07a1e700666aeaad28560833eb27dc6899f7a127089f"
  end
  on_intel do
    version "0.4.1,01KEFV4FADBBXMVQ4YZ64VEP3G"
    sha256 "f22007962cf8d4a4ddede34db9c631227805ab77c582fe6655115881c7a215cc"
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
