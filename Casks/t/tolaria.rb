cask "tolaria" do
  arch arm: "Silicon", intel: on_system_conditional(macos: "Intel", linux: "amd64")
  os macos: "_macOS_#{arch}.dmg", linux: "_#{arch}.AppImage"

  version "2026.10.13"
  sha256 arm:          "e07e2b112c83cc7b8a723f463bd9199f6e274b7fa30c9ccefee7d466f659ed1d",
         intel:        "4c93528391ebf48197387855578f6e2b2fa4ee9c9f31ccda6c83e32553f09be6",
         x86_64_linux: "c8eb672ce978a9ca4754de5ecd89d84f995e047395f857ca8c662eb53b53a278"

  on_macos do
    auto_updates true

    app "Tolaria.app"

    uninstall quit: "club.refactoring.tolaria"

    zap trash: [
      "~/.config/com.tolaria.app",
      "~/Library/Application Support/com.tolaria.app",
      "~/Library/Caches/club.refactoring.tolaria",
      "~/Library/Preferences/club.refactoring.tolaria.plist",
      "~/Library/WebKit/club.refactoring.tolaria",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Tolaria_#{version.csv.second || version}_#{arch}.AppImage", target: "Tolaria.AppImage"
  end

  url "https://github.com/refactoringhq/tolaria/releases/download/v#{version.csv.first.dots_to_hyphens}/Tolaria_#{version.csv.second || version}#{os}"
  name "Tolaria"
  desc "Markdown knowledgebase manager"
  homepage "https://tolaria.md/"

  # The version formatting in the tag name can be inconsistent
  # with the version in the asset name, so we need to compare
  # both and return them in the version if they don't match.
  livecheck do
    url :url
    regex(/Tolaria[._-]v?(\d+(?:\.\d+)+)#{os}/i)
    strategy :github_latest do |json, regex|
      tag_version = json["tag_name"]&.tr("-", ".")&.gsub(/^v/, "")
      next if tag_version.blank?

      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        (match[1] == tag_version) ? tag_version : "#{tag_version},#{match[1]}"
      end
    end
  end
end
