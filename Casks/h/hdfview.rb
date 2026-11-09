cask "hdfview" do
  arch arm: "arm64", intel: "x86_64"

  version "3.4.1"
  sha256 arm:   "a1669bb6cbd32f65cfd3f0c1839a094cd29bcec1ad3697cfb95d704dfaefd603",
         intel: "776a87f2f6106d8b10183c8976aec303da88518de0412fa0440d433d95596c03"

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
