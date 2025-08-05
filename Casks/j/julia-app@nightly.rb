cask "julia-app@nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.13.0"
  sha256 :no_check

  url "https://julialangnightlies-s3.julialang.org/bin/macos/#{arch}/julia-latest-macos-#{arch}.dmg"
  name "Julia"
  desc "Programming language for technical computing"
  homepage "https://julialang.org/"

  livecheck do
    url "https://raw.githubusercontent.com/JuliaLang/julia/refs/heads/master/VERSION"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia", target: "julia-nightly"

  zap trash: "~/.julia"
end
