cask "rq" do
  version "1.0.2"
  sha256 "49f732b2aabf4eaff231e425edf710ca34e6bf730cff9a71adf79d11e630f883"

  url "https://github.com/dflemstr/rq/releases/download/v#{version}/rq-v#{version}-x86_64-apple-darwin.tar.gz"
  appcast "https://github.com/dflemstr/rq/releases.atom"
  name "rq"
  homepage "https://github.com/dflemstr/rq"

  binary "rq"
end
