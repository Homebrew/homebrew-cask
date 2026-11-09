cask "maestro" do
  arch arm:   "arm64",
       intel: on_system_conditional(macos: "x64", linux: "x86_64")
  name_prefix = on_system_conditional macos: "Maestro", linux: "maestro"
  url_end = on_system_conditional macos: "-mac.dmg", linux: ".AppImage"

  version "1.0.2"
  sha256 arm:          "6d6d2ab4d7a2a5b44e2cbc63cc6c380607175d8dfcc84b48abc591939699d116",
         intel:        "98e290c1bb59857b96d6dd20f6ca6c4f099eff27c243e73f29b6ceb0bb64b695",
         arm64_linux:  "62a805340b956e809a8cfefffc1f93bdeb15281038dda2458d5e7b3077b97225",
         x86_64_linux: "cf021107e2e7d9ce928b2fb87a163b5f6a30e35b493ce2a5ad7941ae7d52b37e"

  on_macos do
    depends_on macos: :monterey

    app "Maestro.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.maestro.app.sfl*",
      "~/Library/Application Support/maestro",
      "~/Library/Preferences/com.maestro.app.plist",
    ]
  end
  on_linux do
    app_image "maestro-#{version.csv.second || version.csv.first}-#{arch}.AppImage", target: "Maestro.AppImage"

    zap trash: "~/.config/maestro"
  end

  url "https://github.com/pedramamini/Maestro/releases/download/v#{version.csv.second || version.csv.first}/#{name_prefix}-#{version.csv.second || version.csv.first}-#{arch}#{url_end}"
  name "Maestro"
  desc "AI agent command center"
  homepage "https://runmaestro.ai/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:-RC)?)/i)
    strategy :github_latest do |json, regex|
      version = json["name"]&.[](regex, 1)
      tag_version = json["tag_name"]&.[](regex, 1)
      next if version.blank? || tag_version.blank?

      (version == tag_version) ? tag_version : "#{version},#{tag_version}"
    end
  end

  auto_updates true
end
