cask "tolaria" do
  arch arm: "Silicon", intel: on_system_conditional(macos: "Intel", linux: "amd64")
  os macos: "_macOS_#{arch}.dmg", linux: "_#{arch}.AppImage"

  version "2027.07.31,2027.7.31"

  on_macos do
    sha256 arm:   "499ae37fedfea519582ff17b2d3f45e4a1578a09b2686467c8e84287b7daf061",
           intel: "67ce1323739b3c2552d932a8b7989115d94d525806de74f61a0312f92f4df5f8"

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
    sha256 "ac46b709cfb33ce9b2d73ab8a72264338767335ca1c4ccfd0cfe4386b23f79f5"

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
