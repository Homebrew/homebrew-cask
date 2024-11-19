cask "carbon-copy-cloner" do
  version "7.0.4,8081"
  sha256 "8c0f9035b6a5d3abe0bb13593e8989efa341bbc333e1e1d5791aff870c23fb71"

  url "https://bombich.scdn1.secure.raxcdn.com/software/files/ccc-#{version.csv.first}.#{version.csv.second}.zip",
      verified: "bombich.scdn1.secure.raxcdn.com/software/files/"
  name "Carbon Copy Cloner"
  desc "Hard disk backup and cloning utility"
  homepage "https://bombich.com/"

  # The filename uses a format like 1.2.3456 for 1.2 (3456) or 1.2.3.4567 for
  # 1.2.3 (4567). Since there are a variable number of parts in the version and
  # the secondary number is appended after the version, this can cause
  # livecheck to incorrectly treat the cask version as newer than the upstream
  # version (e.g., 1.2.3456 is seen as newer than 1.2.3.4567 because 3456 is
  # greater than 3). As a result, we have to artificially split the secondary
  # number and use a two part version format like 1.2,3456 for version
  # comparison to work properly.
  livecheck do
    url "https://bombich.com/software/download_ccc.php?v=latest"
    regex(/ccc[._-]v?(\d+(?:\.\d+)+)(?:\.(\d{3,}))/i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      match[2] ? "#{match[1]},#{match[2]}" : match[1]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "carbon-copy-cloner@5",
    "carbon-copy-cloner@6",
  ]
  depends_on macos: ">= :ventura"

  app "Carbon Copy Cloner.app"

  uninstall quit:       [
              "com.bombich.ccc",
              "com.bombich.cccuseragent",
            ],
            login_item: "CCC User Agent"

  zap trash: [
    "/Library/LaunchDaemons/com.bombich.ccchelper.plist",
    "~/Library/Application Support/com.bombich.ccc",
    "~/Library/Caches/com.bombich.ccc",
    "~/Library/Preferences/com.bombich.ccc.plist",
    "~/Library/Preferences/com.bombich.cccuseragent.plist",
    "~/Library/Saved Application State/com.bombich.ccc.savedState",
  ]
end
