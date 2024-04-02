cask "p4" do
  # NOTE: "4" is not a version number, but an intrinsic part of the product name
  arch arm: "12arm64", intel: "1015x86_64"

  version "2023.2,2578891"
  # arm:   https://filehost.perforce.com/perforce/r23.2/bin.macosx12arm64/SHA256SUMS
  # intel: https://filehost.perforce.com/perforce/r23.2/bin.macosx1015x86_64/SHA256SUMS
  sha256 arm:   "120fcd7e2756a5ef31e3ae0eb69f88ac5e451f73e36429376466cf3e86d1b33c",
         intel: "3d994f626cef4a599e98da4383f37b06d205d5420b90188a307fe0de189b0ae8"

  url "https://filehost.perforce.com/perforce/r#{version.major[-2..]}.#{version.minor}/bin.macosx#{arch}/p4"
  name "Perforce Helix Command-Line Client (P4)"
  desc "Use it to gain instant access to operations and complete control over the system"
  homepage "https://www.perforce.com/products/helix-core-apps/command-line-client"

  livecheck do
    url "https://www.perforce.com/perforce/doc.current/user/relnotes.txt"
    regex(%r{\((\d+(?:\.\d+)+)/(\d+)\)}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  conflicts_with cask: "perforce"
  depends_on macos: ">= :sierra"
  container type: :naked

  binary "bin.macosx#{arch}", target: "p4"

  # No zap stanza required
end
