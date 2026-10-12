cask "oscar" do
  arch arm: "ARM", intel: "Intel"
  url_start = on_arch_conditional arm: "OSCAR-", intel: "oscar20_"

  version "2.1.0"
  sha256 arm:   "84abe85da8b75d2ea66840c3c8cbc43547f14420f062d79efa07e4e81fd8f296",
         intel: "6201904ce62ed05e223c3bd205c7bd3c16806af2ed0acb852124a7c78830a5b6"

  url "https://www.sleepfiles.com/OSCAR/#{version.major_minor}/#{url_start}#{version}-#{arch}.dmg"
  name "OSCAR"
  desc "CPAP Analysis Reporter"
  homepage "https://www.sleepfiles.com/OSCAR/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/OSCAR.*?v?(\d+(?:\.\d+)+)(?:[._-]#{arch})?\.dmg}i)
  end

  depends_on macos: :sonoma

  app "OSCAR20.app"

  uninstall quit: "org.oscar-team.OSCAR20"

  zap trash: [
    "~/Library/Preferences/org.oscar-team.OSCAR*.plist",
    "~/Library/Saved Application State/org.oscar-team.OSCAR.savedState",
  ]
end
