cask "cap" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.3.37,01JR7PJRMW6EYXA8GEEV5CJJ78"
    sha256 "daf25b3de7b1b20f6dc43ca20d49e8757d988bc0890587929e5cc0277843383f"
  end
  on_intel do
    version "0.3.37,01JR7NXYMD9BRGDH3S9DYPJ92J"
    sha256 "4cabffa31915015619dd9fa00446327a81f25a772b181745411c36c3556225da"
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
