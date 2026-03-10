cask "julia-app@lts" do
  version "1.10.11"
  sha256 "18c0daffdc4504116d2e29e96b0b81ad98d20c88196d48d377ccffb71ab0ca73"

  url "https://julialang-s3.julialang.org/bin/mac/x64/#{version.major_minor}/julia-#{version}-mac64.dmg"
  name "Julia"
  desc "Programming language for technical computing"
  homepage "https://julialang.org/"

  livecheck do
    url "https://julialang.org/downloads/manual-downloads/"
    regex(/\(LTS\)\s+release:\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sequoia"

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia", target: "julia-lts"

  zap trash: "~/.julia"
end
