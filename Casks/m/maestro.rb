cask "maestro" do
  arch arm:   "arm64",
       intel: on_system_conditional(macos: "x64", linux: "x86_64")
  name_prefix = on_system_conditional macos: "Maestro", linux: "maestro"
  url_end = on_system_conditional macos: "-mac.dmg", linux: ".AppImage"

  version "0.17.3"
  sha256 arm:          "d6fab4ca577567f85013b23346d147823a06b87ab36e066259ec02d50d958eb5",
         intel:        "96bd5b8457fd75de00054d4c4d3c57549ac284309d2ef622525f102b5fb248d3",
         arm64_linux:  "89be16f9cd0045d48c6f0788b1982386fec400790589085933fe82d9442e4652",
         x86_64_linux: "ee4177f6e4137d91b2d35037550a513f507e062277debaeef6b0ed2587589480"

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
