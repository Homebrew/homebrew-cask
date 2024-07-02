cask "rq" do
  version "1.0.2"
  sha256 "49f732b2aabf4eaff231e425edf710ca34e6bf730cff9a71adf79d11e630f883"

  url "https://github.com/dflemstr/rq/releases/download/v#{version}/rq-v#{version}-x86_64-apple-darwin.tar.gz"
  name "rq"
  desc "Record analysis and transformation tool"
  homepage "https://github.com/dflemstr/rq"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "rq"

  caveats do
    requires_rosetta
  end
end
