cask "hdfview" do
  arch arm: "arm64", intel: "x86_64"

  version "3.5.0"
  sha256 arm:   "3bf23866c99e9baf85b32e31fd89386a593ee782a5e5a4170162d266f83a2c1b",
         intel: "e5b02e5af56b8d641722acab4ae258020877774a1ad6f914cfa6f439bc831815"

  url "https://github.com/HDFGroup/hdfview/releases/download/v#{version}/HDFView-#{version}App-Darwin-#{arch}.tar.gz"
  name "HDFView"
  desc "Tool for browsing and editing HDF files"
  homepage "https://www.hdfgroup.org/download-hdfview/"

  # Upstream uses tags where a version part is 99 (e.g. `v99.99.99`) for
  # snapshot builds, so we omit them.
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :git do |tags, regex|
      tags.filter_map do |tag|
        match = tag.match(regex)
        next if match.blank? || match[1].split(".").include?("99")

        match[1]
      end
    end
  end

  depends_on :macos

  app "HDFView.app"

  zap trash: [
    "~/.hdfview*",
    "~/Library/Preferences/HDFView.hdfgroup.org.plist",
    "~/Library/Saved Application State/hdf.view.savedState",
  ]
end
