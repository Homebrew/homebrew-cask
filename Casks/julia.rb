cask "julia" do
  version "1.5.4"
  sha256 "2f54aa030669ed47ca377a3ab866437540df337ad7e6df45f912bfd2b564d04a"

  url "https://julialang-s3.julialang.org/bin/mac/x64/#{version.major_minor}/julia-#{version}-mac64.dmg"
  name "Julia"
  desc "Programming language for technical computing"
  homepage "https://julialang.org/"

  livecheck do
    url "https://github.com/JuliaLang/julia"
    strategy :git
    regex(/^v?(\d+(?:\.\d+)*)$/)
  end

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia"

  zap trash: "~/.julia"
end
