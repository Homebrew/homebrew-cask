cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.79"
  sha256 arm:          "eca94f8fb593a01f5706ccc9e72c41322d5851a65b9ca800a511e450f9871506",
         intel:        "8d09982f06424bcf0ba8ab482a013f411e44faaca4de3fc044d7ad4f62032189",
         arm64_linux:  "0c8eb0a544583ff0d94c1a5bec02683a01c997adfd601b6ec481ba824be1f11f",
         x86_64_linux: "a016ba826ed247d485b767e2ecdce4c51e7f935aaf0e1781799a440a4bf4335d"

  on_macos do
    disable! date: "2026-09-01", because: :fails_gatekeeper_check
  end

  url "https://download.tidelift.com/cli/#{version}/#{os}#{arch}/tidelift"
  name "Tidelift CLI"
  desc "Tool to interact with the Tidelift system"
  homepage "https://tidelift.com/cli"

  livecheck do
    url "https://download.tidelift.com/cli/index.html"
    regex(%r{href=.*?/cli/(\d+(?:\.\d+)+)/#{os}#{arch}/tidelift}i)
  end

  binary "tidelift"

  postflight_steps do
    set_permissions "tidelift", "+x"
  end

  zap :not_required
end
