cask "font-simple-icons" do
  version "16.36.0"
  sha256 "3056b61f2e64efe7649fbf507ce9667290babb0f4532a8d2eceded0c1ff398f4"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  zap :not_required
end
