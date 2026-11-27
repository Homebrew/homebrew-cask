cask "cap" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "darwin", linux: "linux"

  sha256 arm:          "3dbd8c954fb8ca902d2b2c405fa5e89bb05c2f71770f7b639f86c1f98ff1ca5b",
         intel:        "95897861c37badba57bc2efca36e780f02d5f1899dc8481c94200dde663cc3bc",
         x86_64_linux: "f96518446cffbbc84d89143d6b44ca17cd2c306df1256551bbe8fc5913e23420"

  on_macos do
    on_arm do
      version "0.6.3,01M767RX4AACM4AZEHX8XXG1E3"
    end
    on_intel do
      version "0.6.3,01M767VVCBNZ0TZ14TYH79JX5V"
    end

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
  on_linux do
    version "0.6.3,01M768B4NZD7DHVSKG8TFY8QJB"

    depends_on arch: :x86_64

    app_image "Cap_#{version.csv.first}_amd64.AppImage", target: "Cap.AppImage"

    zap trash: [
      "~/.cap",
      "~/.local/share/applications/so.cap.Cap.desktop",
      "~/.local/share/Cap",
      "~/.local/share/so.cap.desktop",
    ]
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}"
  name "Cap"
  desc "Screen recording software"
  homepage "https://cap.so/"

  livecheck do
    url "https://cdn.crabnebula.app/update/cap/cap/#{os}-#{arch}/0.0.0"
    regex(%r{/asset/([^?/]+)}i)
    strategy :json do |json, regex|
      asset_id = json["url"]&.[](regex, 1)
      version = json["version"]
      next if asset_id.blank? || version.blank?

      "#{version},#{asset_id}"
    end
  end

  auto_updates true
end
