cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.36"
  sha256 arm:          "01f9c549686d6a15fc55e931c03659af62cd8faada290069f4da8c4212339c0e",
         intel:        "8d84cc0fb1f6e8a014365e125ca429b68b739785d2c1ab713bf09309eead55b2",
         arm64_linux:  "938ba89b5aac06b6d071735d0223c54150f62bb9b56ba792fd88f12ea0395dd6",
         x86_64_linux: "142cc71a584aa05efdd50d1bbf87108830a8c54ba939d4cb1583771a663bd73c"

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
