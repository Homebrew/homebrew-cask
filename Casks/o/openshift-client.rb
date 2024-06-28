cask "openshift-client" do
  arch arm: "-arm64"

  version "4.16.1"
  sha256 arm:   "926873c66cbb12ba4c6e405cf8f7e654818f228f29178a2814caa246d1220004",
         intel: "c2aae5669240b8c1d1f99acbca07ef74fae817e5f057602dfeffbe7920843871"

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
