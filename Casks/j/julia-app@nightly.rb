cask "julia-app@nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.14.0"
  sha256 :no_check

  url "https://julialangnightlies-s3.julialang.org/bin/macos/#{arch}/julia-latest-macos-#{arch}.dmg"
  name "Julia"
  desc "Programming language for technical computing"
  homepage "https://julialang.org/"

  livecheck do
    url "https://raw.githubusercontent.com/JuliaLang/julia/refs/heads/master/VERSION"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sequoia"

  # The url is unversioned, but the download returns an app with a version number
  rename "Julia-*.app", "Julia Nightly.app"

  app "Julia Nightly.app"
  binary "#{appdir}/Julia Nightly.app/Contents/Resources/julia/bin/julia", target: "julia-nightly"

  zap trash: "~/.julia"
end
