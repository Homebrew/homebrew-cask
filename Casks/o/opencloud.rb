cask "opencloud" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.0-rc.4"
  sha256 arm:   "1820328fe553e09d337c6781cd2484d32d16afa78519e4f26d45b778e4f16d42",
         intel: "07f12d19dca069d5adff6ae90c4b0e2ef4090b84911afee0277713896231c567"

  url "https://github.com/opencloud-eu/desktop/releases/download/v#{version}/OpenCloud_Desktop-v#{version}-macos-clang-#{arch}.pkg"
  name "OpenCloud Desktop"
  desc "Desktop syncing client for OpenCloud"
  homepage "https://github.com/opencloud-eu/desktop"

  # TODO: Update this to use the `GithubLatest` strategy (without a regex or
  # `strategy` block) when a stable version becomes available.
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+.+)$/i)
    strategy :github_releases do |json, regex|
      json.filter_map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  pkg "OpenCloud_Desktop-v#{version}-macos-clang-#{arch}.pkg"

  uninstall pkgutil: [
    "eu.opencloud.client",
    "eu.opencloud.desktop",
    "eu.opencloud.finderPlugin",
  ]

  zap trash: [
    "~/Library/Application Scripts/eu.opencloud.desktopclient.FinderSyncExt",
    "~/Library/Application Support/OpenCloud",
    "~/Library/Caches/eu.opencloud.desktopclient",
    "~/Library/Containers/eu.opencloud.desktopclient.FinderSyncExt",
    "~/Library/Group Containers/9B5WD74GWJ.eu.opencloud.desktopclient",
    "~/Library/Preferences/eu.opencloud.desktopclient.plist",
    "~/Library/Preferences/OpenCloud",
  ]
end
