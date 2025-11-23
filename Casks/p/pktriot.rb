cask "pktriot" do
  arch arm: ".arm64"

  version "0.16.1"
  sha256 arm:   "92f15b025e248347326c65eac7942b0459882a97fa03536e32f5113341b158ef",
         intel: "1407db738a5ffc7e0af1be800f38eca1b0aa573759720026481fe49a636bdaaf"

  url "https://download.packetriot.com/macos/pktriot-#{version}.macos#{arch}.tar.gz"
  name "pktriot"
  desc "Host server applications and static websites"
  homepage "https://packetriot.com/"

  livecheck do
    url "https://packetriot.com/downloads"
    regex(/href=.*?pktriot[._-](\d+(?:\.\d+)+)\.macos#{arch}\.t/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  binary "pktriot-#{version}/pktriot"

  zap trash: "~/.pktriot"
end
