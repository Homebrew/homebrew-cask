cask "tailwindcss" do
  version "3.3.3"
  sha256 "b65b00ced53a464ef1ab54f734d0e50741adde2469bc093bd953be806b98129b"

  url "https://github.com/tailwindlabs/tailwindcss/releases/download/v#{version}/tailwindcss-macos-arm64"
  name "tailwindcss"
  desc "Utility-first CSS framework for rapidly building custom user interfaces"
  homepage "https://github.com/tailwindlabs/tailwindcss"

  binary "tailwindcss-macos-arm64", target: "tailwindcss"
end
