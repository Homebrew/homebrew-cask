cask "motrix@beta" do
  arch arm: "-arm64", intel: on_system_conditional(macos: "-x64", linux: "-x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.0.0-beta.29"
  sha256 arm:          "bbddb849cc3bf2fe44759007c4e726695e497556b7128ccc86d9ac84db3eb609",
         intel:        "b35574927ed988186a8bb95c1ceda3d71628cb50026e1fe7343e6c6620d411c7",
         arm64_linux:  "1b7ed9df7ff801b80746a3b2331d0cd796c56fed86eb8d101dbf938a58a31296",
         x86_64_linux: "f3480c096d169ef3e50df8b8cb8c443f7b1f77da649ec3fad4856afb2b9be13b"

  on_macos do
    depends_on macos: :monterey

    app "Motrix.app"

    zap trash: [
      "~/Library/Application Support/Motrix",
      "~/Library/Caches/app.motrix.native",
      "~/Library/Logs/Motrix",
      "~/Library/Preferences/app.motrix.native.plist",
      "~/Library/Saved Application State/app.motrix.native.savedState",
    ]
  end
  on_linux do
    app_image "Motrix-#{version}#{arch}.AppImage", target: "Motrix.AppImage"
  end

  url "https://github.com/agalwood/Motrix/releases/download/v#{version}/Motrix-#{version}#{arch}.#{os}"
  name "Motrix Beta"
  desc "Open-source download manager"
  homepage "https://motrix.app/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:[._-]beta\.\d+)?)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || !release["prerelease"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  auto_updates true
  conflicts_with cask: "motrix"
end
