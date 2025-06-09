cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.24"
  sha256 arm:          "3a1cb4106747ec9a1fa6aedfd1baf777477a64c2386066b80a670edcac8c76e3",
         intel:        "a39c2c1d838671c04863d5f558ad29dbfdd2cb1bfb0675e994c7daad5d9eef5d",
         arm64_linux:  "fbaaf286e4ddad0918c784995f6dd14c7fac5f5b963642f359eb8f98148972b4",
         x86_64_linux: "c1cbc15e5267162301f23808f84f523ebb17331cf18d3a16f2ac20e9a3775100"

  url "https://download.tidelift.com/cli/#{version}/#{os}#{arch}/tidelift"
  name "Tidelift CLI"
  desc "Tool to interact with the Tidelift system"
  homepage "https://tidelift.com/cli"

  livecheck do
    url "https://download.tidelift.com/cli/index.html"
    regex(%r{href=.*?/cli/(\d+(?:\.\d+)+)/#{os}#{arch}/tidelift}i)
  end

  binary "tidelift"

  postflight do
    set_permissions "#{staged_path}/tidelift", "+x"
  end

  # No zap stanza required
end
