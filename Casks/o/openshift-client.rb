cask "openshift-client" do
  arch arm: "-arm64"

  version "4.16.0"
  sha256 arm:   "1c16708f49bbd06c03ded7761a5ec3afb10626ac4ab2dee28c1afeac86e33637",
         intel: "11cd9aee3e4a0d1ef434a3f8289666a48eea1d4d233133dce672364ab5c117dc"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"

  zap trash: "~/.kube/config"
end
