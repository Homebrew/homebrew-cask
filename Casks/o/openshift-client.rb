cask "openshift-client" do
  arch arm: "-arm64"

  version "4.14.1"
  sha256 arm:   "49ea0b68a20f59bd050870137b292dcdf10b20c1db34524697677b9fded101d9",
         intel: "559cddfa1c29602f30227989dbca3d656c3b69a9d47ec69fd468de979893f7e4"

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
