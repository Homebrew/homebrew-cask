cask "julia-app@lts" do
  arch arm: "aarch64", intel: "x64"

  version "1.10.13"
  sha256 arm:   "875b2f48476c770f5f29e6a02c8f5c40c138b8c0624b0e404c779239ffeba91c",
         intel: "9b204da3c947e312e7c3e9ae48db203656dcc3a366cd26c05abc553b0c7aa376"

  url "https://julialang-s3.julialang.org/bin/mac/#{arch}/#{version.major_minor}/julia-#{version}-mac#{arch.delete_prefix("x")}.dmg"
  name "Julia"
  desc "Programming language for technical computing"
  homepage "https://julialang.org/"

  livecheck do
    url "https://julialang.org/downloads/manual-downloads/"
    regex(/id=["']long_term_support_release["'][^>]*>.*?v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :golden_gate

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia", target: "julia-lts"

  zap trash: "~/.julia"
end
