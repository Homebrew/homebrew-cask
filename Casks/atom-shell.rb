cask :v1 => 'atom-shell' do
  version '0.19.0'
  sha256 'e14ecea827ce78cedb1ed9f4f4aa7d42912a31f69cbbf72588b2d9307f583c41'

  url "https://github.com/atom/atom-shell/releases/download/v#{version}/atom-shell-v#{version}-darwin-x64.zip"
  homepage 'https://github.com/atom/atom-shell'
  license :oss

  stage_only true
end
