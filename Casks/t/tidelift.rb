cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.44"
  sha256 arm:          "0e3e10a274c9016d88ed31adab94ce358e18cee2139d7196c9f581af53ef524d",
         intel:        "535a787c21f2f9fdfb3f11624314bdeaffb596f2dc4fd61545e8f3bda54d2f09",
         arm64_linux:  "b4aca35020fd71f6aca5b7d36adb9c14e94c2a7f2c607f3063690a69be6e2be4",
         x86_64_linux: "bd6ddb753f7613db94cabf37626851ec6be01a207c6df8f808b39c1b9041e490"

  url "https://download.tidelift.com/cli/#{version}/#{os}#{arch}/tidelift"
  name "Tidelift CLI"
  desc "Tool to interact with the Tidelift system"
  homepage "https://tidelift.com/cli"

  livecheck do
    url "https://download.tidelift.com/cli/index.html"
    regex(%r{href=.*?/cli/(\d+(?:\.\d+)+)/#{os}#{arch}/tidelift}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  binary "tidelift"

  postflight do
    set_permissions "#{staged_path}/tidelift", "+x"
  end

  # No zap stanza required
end
